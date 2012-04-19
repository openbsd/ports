# $OpenBSD: Makefile,v 1.1.1.1 2012/04/19 14:47:17 okan Exp $

COMMENT =	portable C compiler

PCCVER =	1.0.0
DISTNAME =	pcc-${PCCVER}
EXTRACT_SUFX =	.tgz

CATEGORIES =	lang

HOMEPAGE =	http://pcc.ludd.ltu.se/

MAINTAINER =	Eric Radman <ericshane@eradman.com>

# Other architectures not fully supported yet
ONLY_FOR_ARCHS = i386 amd64

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc-releases/ \
		ftp://pcc.ludd.ltu.se/pub/pcc-releases/

CONFIGURE_STYLE = gnu

CONFIG =	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS =	PCCVER CONFIG

do-regress:
	cd ${WRKBUILD} && ./cc/cc/pcc --version

.include <bsd.port.mk>
