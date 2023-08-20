COMMENT =	portable C compiler

DISTNAME =	pcc-${DISTVER}
PKGNAME =	pcc-${PKGVER}

WANTLIB += c

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc/ \
		ftp://pcc.ludd.ltu.se/pub/pcc/

CONFIGURE_ENV =	YACC=/usr/bin/yacc

# XXX: remove if fixed centrally in config.site
CONFIGURE_ARGS	=	ac_cv_lib_lex='none needed'

RUN_DEPENDS =	lang/pcc/pcc-libs

.include <bsd.port.mk>
