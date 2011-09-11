# $OpenBSD: Makefile,v 1.14 2011/09/11 12:36:12 sthen Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-2.9
CATEGORIES=		security
SHARED_LIBS +=  tasn1                2.0      # .4.6

HOMEPAGE=		http://www.gnu.org/software/gnutls/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=libtasn1/}

WANTLIB=		c

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc

.include <bsd.port.mk>
