# $OpenBSD: Makefile,v 1.1 2021/02/18 02:26:43 daniel Exp $

COMMENT =	portable C compiler

DISTNAME =	pcc-${DISTVER}
PKGNAME =	pcc-${PKGVER}

WANTLIB += c

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc/ \
		ftp://pcc.ludd.ltu.se/pub/pcc/

CONFIGURE_ENV =	YACC=/usr/bin/yacc

RUN_DEPENDS =	lang/pcc/pcc-libs

.include <bsd.port.mk>
