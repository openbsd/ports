# $OpenBSD: Makefile,v 1.4 2004/10/26 03:53:41 marcm Exp $

COMMENT=		"Internationalization tool"

DISTNAME=		intltool-0.31.3
CATEGORIES=		textproc

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/intltool/0.31/}
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
