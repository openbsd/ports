# $OpenBSD: Makefile,v 1.19 2019/08/10 19:41:07 naddy Exp $

COMMENT =	portable C compiler

PCCVER =	1.0.0
DISTNAME =	pcc-${PCCVER}
REVISION =	15
EXTRACT_SUFX =	.tgz

CATEGORIES =	lang

HOMEPAGE =	http://pcc.ludd.ltu.se/

# Other architectures not fully supported yet
ONLY_FOR_ARCHS = i386 amd64

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc-releases/ \
		ftp://pcc.ludd.ltu.se/pub/pcc-releases/

CONFIGURE_STYLE = gnu

CONFIG =	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS =	PCCVER CONFIG

do-test:
	cd ${WRKBUILD} && ./cc/cc/pcc --version

.include <bsd.port.mk>
