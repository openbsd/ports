# $OpenBSD: Makefile,v 1.9 2010/06/02 09:57:17 kili Exp $

COMMENT=	java-like zip interface
DISTNAME=	zipios++-0.1.5.9+cvs.2004.02.07
PKGNAME=	zipios++-0.1.5.9p1
CATEGORIES=	devel archivers
MASTER_SITES=	http://http.us.debian.org/debian/pool/main/z/zipios++/
MASTER_SITES0=	${MASTER_SITE_GNU:=automake/}
SHARED_LIBS +=	zipios               1.0      # .0.0

DISTFILES=	zipios++_0.1.5.9+cvs.2004.02.07.orig.tar.gz \
		automake-1.7.tar.gz:0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m stdc++ z
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
post-extract:
	for i in depcomp install-sh missing mkinstalldirs; do \
		rm ${WRKDIST}/$$i; \
		cp ${WRKDIR}/automake-1.7/lib/$$i ${WRKDIST}; \
	done

MAKE_FLAGS=SUBDIRS='zipios++ src'

post-install:
	${INSTALL_DATA} ${WRKBUILD}/zipios++/zipios-config.h ${PREFIX}/include/zipios++/
.include <bsd.port.mk>
