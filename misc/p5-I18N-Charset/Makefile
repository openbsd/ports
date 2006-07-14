# $OpenBSD: Makefile,v 1.19 2006/07/14 05:05:40 steven Exp $

COMMENT=	"module to map charset names registered with IANA"

DISTNAME=	I18N-Charset-1.379
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=I18N/}

RUN_DEPENDS=	:p5-IO-String-*:devel/p5-IO-String \
		:p5-App-Info->=0.23:devel/p5-App-Info \
		:p5-IO-Capture->=0.03:devel/p5-IO-Capture
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=:p5-Unicode-Map-*:converters/p5-Unicode-Map \
		:p5-Unicode-Map8-*:converters/p5-Unicode-Map8 \
		:p5-Unicode-MapUTF8-*:converters/p5-Unicode-MapUTF8

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
