# $OpenBSD: Makefile,v 1.1.1.1 2001/11/26 16:58:17 fgsch Exp $

COMMENT=	"opendivx decoding API"

DISTNAME=	libdivxdecore-0.4.7
CATEGORIES=	graphics devel
NEED_VERSION=	1.480
MASTER_SITES=	http://download2.projectmayo.com/dnload/divx4linux/xmps/

HOMEPAGE=	http://www.projectmajo.com/projects/detail.php?projectId=1

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	--enable-shared=no
.endif
