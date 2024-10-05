module lsmtree

pub interface LSMTree {
	insert(key string, value string)
	delete(key string) !
	find(key string) !string
}

pub fn new() LSMTreeImpl {
	return LSMTreeImpl{}
}

struct LSMTreeImpl {}

pub fn (t LSMTreeImpl) insert(key string, value string) {}

pub fn (t LSMTreeImpl) delete(key string) ! {
	if key == 'foo' {
		return
	}

	return error('${key} not found')
}

pub fn (t LSMTreeImpl) find(key string) !string {
	if key == 'foo' {
		return 'bar'
	}

	return error('${key} not found')
}
