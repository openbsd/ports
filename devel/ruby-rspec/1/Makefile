COMMENT =		ruby framework for Behaviour Driven Development
DISTNAME =		rspec-1.3.2
PORTROACH =		limit:^1
REVISION =		7
SUBST_VARS =		MODRUBY_FLAVOR MODRUBY_PKG_PREFIX

# When you have two different versions of a ruby gem installed, the
# binaries will always select the latest version installed, even if
# newer gem has a different binary name than the older version, as
# rspec does with spec for 1 and rspec for 2.  Fix this by setting
# a specific version in the gem binary shim, so that running spec
# will load the rspec 1 gem, not the rspec 2 gem.
post-install:
	perl -pi -e 's/version = ">= 0"/version = "~> 1.3"/' \
		${WRKINST}${LOCALBASE}/${GEM_BIN}/spec${GEM_BIN_SUFFIX}

.include <bsd.port.mk>
