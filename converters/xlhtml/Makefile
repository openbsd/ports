# $OpenBSD: Makefile,v 1.11 2013/03/11 01:30:28 espie Exp $

COMMENT=	convert Excel and PowerPoint to HTML

V=		0.2.9.8
DISTNAME=	xlHtml-${V}
PKGNAME=	xlhtml-${V}
REVISION=	1
SHARED_LIBS +=	cole                 2.1      # .2.1
CATEGORIES=	converters

MASTER_SITES=	http://gd.tuwien.ac.at/utils/format-conv/xlHtml/
HOMEPAGE=	http://chicago.sourceforge.net/xlhtml/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --enable-static ${CONFIGURE_SHARED}

.include <bsd.port.mk>
