# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:59 sthen Exp $

COMMENT=		text hyphenation library

DISTNAME=		hyphen-2.8.8

SHARED_LIBS +=	hyphen                    0.0 # 3.0

CATEGORIES=		textproc

HOMEPAGE=		http://hunspell.sourceforge.net/

# GPLv2+ | LGPLv2.1 | MPL
PERMIT_PACKAGE=	Yes


MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hunspell/}

BUILD_DEPENDS=		lang/gawk
TEST_DEPENDS=		shells/bash

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_AWK=gawk

LANG_ALIASES=		en_AG en_AU en_BS en_BW en_BZ en_CA en_DK en_GB en_GH \
			en_HK en_IE en_IN en_JM en_MW en_NA en_NZ en_PH en_SG \
			en_TT en_ZA en_ZM en_ZW"

post-install:
.for a in ${LANG_ALIASES}
	ln -s hyph_en_US.dic ${PREFIX}/share/hyphen/hyph_${a}.dic
.endfor

pre-test:
	sed -i "s,/bin/bash,/usr/bin/env bash," ${WRKSRC}/tests/test.sh

.include <bsd.port.mk>
