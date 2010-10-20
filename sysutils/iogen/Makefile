# $OpenBSD: Makefile,v 1.22 2010/10/20 15:23:04 naddy Exp $

COMMENT=	i/o generator
PKGNAME=	iogen-3.1
REVISION=	0
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
FAKE_FLAGS+=	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/cat"
MAKE_ENV=	CC="${CC}"
WRKDIST=	${WRKDIR}

post-extract:
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
