# $OpenBSD: Makefile,v 1.27 2010/10/18 16:47:00 espie Exp $

COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.2.1

CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REVISION =	0
WANTLIB=		c

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --program-prefix="g" --disable-uucode --disable-nls
USE_GROFF =	Yes

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

# Regression tests apply to uudecode, which we don't build
NO_REGRESS=Yes

.include <bsd.port.mk>
