# $OpenBSD: Makefile,v 1.6 2003/11/25 20:23:20 pvalchev Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=		"libsigc bug??"
.endif

COMMENT=	"protocol icq2000/2001 library"

DISTNAME=	libicq2000-0.3.2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libicq2000/}

HOMEPAGE=	http://libicq2000.sourceforge.net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	sigc::devel/libsigc++

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
