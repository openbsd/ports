# $OpenBSD: Makefile,v 1.11 2000/04/08 22:04:32 espie Exp $

DISTNAME=	gnuplot-3.7
PKGNAME=	gnuplot-3.7
CATEGORIES=	math graphics
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/ \
		ftp://ftp.irisa.fr/pub/gnuplot/ \
		ftp://ftp.cc.monash.edu.au/pub/gnuplot/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gnuplot

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no modify"
PERMIT_PACKAGE_FTP=	"no modify"
PERMIT_DISTFILES_CDROM=	"no modify"
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

LIB_DEPENDS=	png::graphics/png

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+=	--exec-prefix='$$(prefix)' \
		--includedir='$$(prefix)/include' --libdir='$$(prefix)/lib' \
		--with-x --without-linux-vga --without-gd \
		--with-gnu-readline --with-lasergnu --with-png 

.include <bsd.port.mk>
