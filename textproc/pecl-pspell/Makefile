COMMENT=	spelling checker extension for PHP

DISTNAME=	pspell-1.0.1
REVISION=	0

CATEGORIES=	textproc

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += aspell iconv intl pspell pthread

MODULES=	lang/php/pecl
# not for pre-8.4
FLAVORS=	php84
FLAVOR?=	php84

MODPHP_DO_SAMPLE= pspell

LIB_DEPENDS=	textproc/aspell/core

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
