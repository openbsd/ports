# $OpenBSD: Makefile,v 1.3 2000/08/29 04:27:50 brad Exp $

ONLY_FOR_ARCH=	i386

DISTNAME=	icecast-1.3.7
CATEGORIES=	audio net www
NEED_VERSION=	1.320
MASTER_SITES=	http://www.icecast.org/releases/

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/icecast
SUBST_VARS=	SYSCONFDIR

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-crypt

DOCS=	AUTHORS BUGS CHANGES COPYING FAQ README

post-patch:
	@cp ${FILESDIR}/icepass.c ${WRKSRC}/src

post-install:
	cd ${WRKSRC}; $(INSTALL_DATA) $(DOCS) ${PREFIX}/share/doc/icecast

.include <bsd.port.mk>
