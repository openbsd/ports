# $OpenBSD: Makefile,v 1.11 2003/06/22 10:01:35 sturm Exp $

COMMENT=	"opensource Napster(tm) server"

DISTNAME=	opennap-0.44
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opennap/}

HOMEPAGE=	http://opennap.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	\
	--enable-email \
	--enable-resume \
	--datadir=${SYSCONFDIR} \
	--with-uid=_opennap \
	--with-gid=_opennap
#	--enable-chroot \  (breaks uid, gid, and ip lookup)

DOCS=	FAQ README manual.html napster.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opennap
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA} ${WRKSRC}/sample.* ${PREFIX}/share/examples/opennap

.include <bsd.port.mk>
