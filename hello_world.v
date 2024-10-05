import lsmtree

fn main() {
	tree := lsmtree.new()

	tree.insert("foo", "bar")
	foo := tree.find("foo") or { 
		println("not found")
		return
	}

	println(foo)
}