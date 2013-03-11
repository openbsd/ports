# $OpenBSD: Makefile,v 1.24 2013/03/11 11:41:30 espie Exp $

COMMENT=	i/o generator
PKGNAME=	iogen-3.1
REVISION=	1
CATEGORIES=	sysutils
DISTFILES=

HOMEPAGE=	http://opensource.conformal.com/wiki/Iogen

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

NO_CHECKSUM=	Yes
NO_TEST=	Yes

CFLAGS+=	-DVERSION=\"${PKGNAME:S/iogen-//}\"
FAKE_FLAGS+=	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"
MAKE_ENV=	CC="${CC}"
WRKDIST=	${WRKDIR}

post-extract:
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
