# $OpenBSD: Makefile,v 1.15 2002/03/03 01:37:38 brad Exp $
# Uses pthreads

COMMENT=	"Internet based broadcasting system"

# archs that have pthreads library in
# good enough shape to run this app.
ONLY_FOR_ARCHS=	i386 sparc

DISTNAME=	icecast-1.3.11
CATEGORIES=	net audio
NEED_VERSION=	1.500
MASTER_SITES=	http://www.icecast.org/releases/

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/icecast
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS= --with-libwrap

# disabled for now
# --with-crypt

DOCS=	AUTHORS BUGS CHANGES COPYING FAQ README

post-install:
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/icecast

.include <bsd.port.mk>
