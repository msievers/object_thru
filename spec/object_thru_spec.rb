describe ObjectThru do
  it "adds Object#thru" do
    expect(Object.new).to respond_to(:thru)
  end

  describe "Object#thru" do
    context "if a block is given" do
      it "yields the object to the block" do
        array = [1,2,3]

        array.thru do |_array|
          expect(array.object_id).to eq(_array.object_id)
        end
      end

      it "returns the result of the block" do
        array = [1,2,3]

        result = array.thru do |_array|
          array.first
        end

        expect(result).to eq(array.first)
      end
    end

    context "if a callable is given" do
      it "calls the callable with the object" do
        callable = ->(object) { object }

        some_object = Object.new
        expect(some_object.thru(callable).object_id).to eq(some_object.object_id)
      end

      it "it returns the result of the callable" do
        callable = ->(integer) { integer + 1 }

        some_number = 1
        expect(some_number.thru(callable)).to eq(callable.call(some_number))
      end
    end
  end
end
