# $OpenBSD: Makefile,v 1.20 2002/05/12 21:37:03 brad Exp $

COMMENT=	"packing and unpacking of shell archives"

DISTNAME=	sharutils-4.2.1
CATEGORIES=	archivers
NEED_VERSION=	1.525
MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --program-prefix="g" --disable-uucode --disable-nls

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

# Regression tests apply to uudecode, which we don't build
NO_REGRESS=Yes

.include <bsd.port.mk>
