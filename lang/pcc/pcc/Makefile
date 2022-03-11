COMMENT =	portable C compiler

DISTNAME =	pcc-${DISTVER}
PKGNAME =	pcc-${PKGVER}

WANTLIB += c

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc/ \
		ftp://pcc.ludd.ltu.se/pub/pcc/

# XXX:
# upstream used autoconf 2.70 which has a bug
# finding lex on OpenBSD. Locally regenerate
# using an older working autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ENV =	YACC=/usr/bin/yacc

RUN_DEPENDS =	lang/pcc/pcc-libs

.include <bsd.port.mk>
