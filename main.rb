# frozen_string_literal: true

require_relative './dependency'

library = GeneratorGenerator.generate_library

Result.return(library)
