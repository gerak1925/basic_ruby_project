def ftoc(temp)
	if temp.is_a?(Float)
		return result = ((temp-32.0)*5.0/9.0)
	else
		return result = ((temp-32)*5/9)
	end
end

def ctof(temp)
	return result = ((temp.to_f*9.0/5.0)+32.0)
end