# $OpenBSD: Makefile,v 1.11 2000/10/07 16:52:34 matthieu Exp $
# $FreeBSD: Makefile,v 1.4 1998/01/17 17:25:46 jfieber Exp $

DISTNAME=	linuxdoc-1.1
CATEGORIES=	textproc
NEED_VERSION=	1.320
MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

RUN_DEPENDS=	${LOCALBASE}/share/sgml/iso8879/catalog::textproc/iso8879

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=       Yes

WRKDIST=	${WRKDIR}

FILES=	README catalog freebsd-1.0.dtd freebsd-1.1.dtd \
	linuxdoc.dec original.dtd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sgml/linuxdoc
	cd ${WRKSRC}; ${INSTALL_DATA} ${FILES} ${PREFIX}/share/sgml/linuxdoc
	${INSTALL_DATA} ${FILESDIR}/xfree86.dtd ${PREFIX}/share/sgml/linuxdoc

.include <bsd.port.mk>
