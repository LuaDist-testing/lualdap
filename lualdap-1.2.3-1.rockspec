-- This file was automatically generated for the LuaDist project.

package="lualdap"
version="1.2.3-1"
-- LuaDist source
source = {
  tag = "1.2.3-1",
  url = "git://github.com/LuaDist-testing/lualdap.git"
}
-- Original source
-- source = {
--    url = "git://github.com/bdellegrazie/lualdap",
--    tag = "v1.2.3",
-- }
description = {
   summary = "Simple interface from Lua to an LDAP Client",
   detailed = [[
      Simple interface from Lua to an LDAP client.
   ]],
   homepage = "https://github.com/bdellegrazie/lualdap",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
external_dependencies = {
   LIBLDAP = {
      header = "ldap.h",
      library = "ldap",
   }
}
build = {
   type = "builtin",
   modules = {
      lualdap = {
         sources = {"src/lualdap.c"},
         libdirs = {"$(LIBLDAP_LIBDIR)"},
         incdirs = {"$(LIBLDAP_INCDIR)"},
         libraries = {"ldap"},
      },
   }
}