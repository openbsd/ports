# $OpenBSD: Makefile,v 1.16 2009/02/14 09:46:59 jasper Exp $

COMMENT=	opensource Napster(tm) server

DISTNAME=	opennap-0.44
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opennap/}

HOMEPAGE=	http://opennap.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-email \
		--enable-resume \
		--datadir=${SYSCONFDIR} \
		--with-uid=_opennap \
		--with-gid=_opennap
#		--enable-chroot \  (breaks uid, gid, and ip lookup)

.if ${MACHINE_ARCH} == "vax"
CFLAGS+=	-O0 # XXX compiler bugs
.endif

DOCS=	FAQ README manual.html napster.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opennap
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA} ${WRKSRC}/sample.* ${PREFIX}/share/examples/opennap

.include <bsd.port.mk>
