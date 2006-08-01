# $OpenBSD: Makefile,v 1.3 2006/08/01 22:46:16 espie Exp $

COMMENT=	"XML internationalization tool"

DISTNAME=	getxml-1.0.4
CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/toutdoux/en/index.html
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=	${MASTER_SITE_GNU:=toutdoux/}

LIB_DEPENDS=	xml.>=9::textproc/libxml1 \
		glib.>=1::devel/glib

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
