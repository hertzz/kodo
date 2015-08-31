__LIB_DIR__ = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift __LIB_DIR__ unless $LOAD_PATH.include?(__LIB_DIR__)

# Stdlib includes
require 'yaml'
require 'securerandom'

# Internal includes
require 'kodo/version'
require 'kodo/exceptions'
require 'kodo/core/config'
require 'kodo/core/cli'
require 'kodo/generators'
