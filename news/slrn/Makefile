# $OpenBSD: Makefile,v 1.21 2001/06/09 17:18:00 lebel Exp $

COMMENT=		"SLang-based newsreader"

DISTNAME=		slrn-0.9.7.1
CATEGORIES=		news
NEED_VERSION=		1.364

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	slrn
HOMEPAGE=		http://www.slrn.org/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		slang.::devel/libslang

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl

do-install:
	@cd ${WRKBUILD}/src && make ${FAKE_FLAGS} install

.include <bsd.port.mk>
