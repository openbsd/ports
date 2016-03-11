# $OpenBSD: Makefile,v 1.16 2016/03/11 20:07:49 naddy Exp $

COMMENT=	convert Excel and PowerPoint to HTML

V=		0.2.9.8
DISTNAME=	xlHtml-${V}
PKGNAME=	xlhtml-${V}
REVISION=	3
SHARED_LIBS +=	cole                 2.1      # .2.1
CATEGORIES=	converters

MASTER_SITES=	http://gd.tuwien.ac.at/utils/format-conv/xlHtml/
HOMEPAGE=	http://chicago.sourceforge.net/xlhtml/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --enable-static

.include <bsd.port.mk>
