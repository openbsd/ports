# $OpenBSD: Makefile,v 1.6 2000/09/06 05:48:49 brad Exp $

ONLY_FOR_ARCH=	i386

DISTNAME=	icecast-1.3.7
CATEGORIES=	net audio www
NEED_VERSION=	1.324
MASTER_SITES=	http://www.icecast.org/releases/

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/icecast
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-crypt --with-libwrap

DOCS=	AUTHORS BUGS CHANGES COPYING FAQ README

post-patch:
	@cp ${FILESDIR}/icepass.c ${WRKSRC}/src

post-install:
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/icecast

.include <bsd.port.mk>
