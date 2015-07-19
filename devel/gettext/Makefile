# $OpenBSD: Makefile,v 1.76 2015/07/19 23:46:08 naddy Exp $

COMMENT=	GNU gettext runtime libraries and programs

DISTNAME=	gettext-0.19.5.1
SHARED_LIBS +=  intl                 6.0      # 9.3
SHARED_LIBS +=  asprintf             1.1      # unknown

CATEGORIES=	devel
# DPB: parallel-safe, not worth it. Too much time in configure

MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/gettext/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv2.1, GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv
WANTLIB=	c m stdc++

WRKSRC=		${WRKDIST}/gettext-runtime
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-csharp \
		--disable-java \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-included-gettext

CONFIGURE_ENV +=	gl_cv_have_weak=yes

MODGNU_CONFIG_GUESS_DIRS=${WRKDIST}/build-aux

EXTRA_LOCALES=	en he lv no
# only in gettext-tools
EXTRA_LOCALES+=	eu pa

post-install:
	for l in ${EXTRA_LOCALES}; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$$l/LC_MESSAGES; \
	done

.include <bsd.port.mk>
