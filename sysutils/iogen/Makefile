# $OpenBSD: Makefile,v 1.23 2011/06/23 22:50:29 naddy Exp $

COMMENT=	i/o generator
PKGNAME=	iogen-3.1
REVISION=	1
CATEGORIES=	sysutils
DISTFILES=

HOMEPAGE=	http://opensource.conformal.com/wiki/Iogen

# ISC
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c

NO_CHECKSUM=	Yes
NO_REGRESS=	Yes

CFLAGS+=	-DVERSION=\"${PKGNAME:S/iogen-//}\"
FAKE_FLAGS+=	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"
MAKE_ENV=	CC="${CC}"
WRKDIST=	${WRKDIR}

post-extract:
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
