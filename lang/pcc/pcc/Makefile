COMMENT =	portable C compiler

DISTNAME =	pcc-${DISTVER}
PKGNAME =	pcc-${PKGVER}

WANTLIB += c

SITES =		http://pcc.ludd.ltu.se/ftp/pub/pcc/ \
		ftp://pcc.ludd.ltu.se/pub/pcc/

CONFIGURE_ENV =	YACC=/usr/bin/yacc

RUN_DEPENDS =	lang/pcc/pcc-libs>=${PKGVER}

CFLAGS_base-clang =	-Wno-error=int-conversion

.include <bsd.port.mk>
