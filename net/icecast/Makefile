# $OpenBSD: Makefile,v 1.2 2000/08/29 03:40:35 fgsch Exp $

DISTNAME=	icecast-1.3.7
CATEGORIES=	audio net www
NEED_VERSION=	1.310
MASTER_SITES=	http://www.icecast.org/releases/
MAINTAINER=	fgsch@openbsd.org

ONLY_FOR_ARCH=	i386

HOMEPAGE=	http://www.icecast.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-crypt

DOCFILES=	AUTHORS BUGS CHANGES COPYING FAQ README

post-patch:
	@cp ${FILESDIR}/icepass.c ${WRKSRC}/src

post-install:
	@rm -f ${PREFIX}/share/icecast/templates/manual.html
	@rmdir ${PREFIX}/share/icecast/static
	cd ${WRKSRC} && $(INSTALL_DATA) $(DOCFILES) \
	    ${PREFIX}/share/doc/icecast

.include <bsd.port.mk>
