# $OpenBSD: Makefile,v 1.3 2004/04/07 06:14:35 marcm Exp $

COMMENT=		"Internationalization tool"

DISTNAME=		intltool-0.30
CATEGORIES=		textproc

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/intltool/0.30/}
EXTRACT_SUFX=           .tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# intltool-merge wants it
RUN_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
