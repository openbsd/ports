# $OpenBSD: Makefile,v 1.46 2004/12/20 10:35:35 alek Exp $

COMMENT=	"read/write/list/format DOS disks under Unix"

DATE=		20040505
DISTNAME=	mtools-3.9.9
PKGNAME=	${DISTNAME}.${DATE}
CATEGORIES=	sysutils
MASTER_SITES=	http://www.tux.org/pub/knaff/mtools/ \
		${HOMEPAGE}

PATCHFILES=	${DISTNAME}-${DATE}.diff.gz

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://mtools.linux.lu/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c 

USE_GMAKE=		Yes

USE_X11=		Yes

CONFIGURE_STYLE=	autoconf dest
SEPARATE_BUILD=		Simple

pre-patch:
	@ln -s . ${WRKSRC}/mtools

post-patch:
	@rm ${WRKSRC}/mtools

.include <bsd.port.mk>
