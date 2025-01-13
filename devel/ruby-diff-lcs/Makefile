COMMENT =		port of Algorithm::Diff that uses the LCS algorithm

DISTNAME =		diff-lcs-1.5.1
CATEGORIES =		devel

# Perl Artistic
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rspec3

pre-test:
	ln -fs ${RUBY} ${WRKDIR}/bin/ruby

.include <bsd.port.mk>
