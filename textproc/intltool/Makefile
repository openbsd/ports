# $OpenBSD: Makefile,v 1.5 2005/04/12 06:34:16 marcm Exp $

COMMENT=		"Internationalization tool"

DISTNAME=		intltool-0.33
CATEGORIES=		textproc

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/intltool/0.33/}
EXTRACT_SUFX=           .tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		${BUILD_DEPENDS}

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
