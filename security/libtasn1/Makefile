# $OpenBSD: Makefile,v 1.15 2012/03/20 14:01:14 sthen Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-2.12
CATEGORIES=		security
SHARED_LIBS +=  tasn1                2.0      # .4.15

HOMEPAGE=		http://www.gnu.org/software/gnutls/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=libtasn1/}

WANTLIB=		c

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc

.include <bsd.port.mk>
