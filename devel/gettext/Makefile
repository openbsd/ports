# $OpenBSD: Makefile,v 1.87 2018/10/25 13:21:58 sthen Exp $

COMMENT=	GNU gettext runtime libraries and programs

DISTNAME=	gettext-0.19.8.1
REVISION =	3
SHARED_LIBS +=  intl                 6.0      # 9.5
SHARED_LIBS +=  asprintf             1.1      # unknown

CATEGORIES=	devel
# DPB: parallel-safe, not worth it. Too much time in configure

MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/gettext/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv2.1, GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	converters/libiconv
WANTLIB=	c m iconv ${COMPILER_LIBCXX}

# on critical path to lang/gcc.  XXX c++ used in libasprintf but seems
# unused at present; may need to revisit if this changes
COMPILER =		base-clang base-gcc

WRKSRC=		${WRKDIST}/gettext-runtime
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-csharp \
		--disable-java \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-included-gettext

MODGNU_CONFIG_GUESS_DIRS=${WRKDIST}/build-aux

EXTRA_LOCALES=	en he lv no
# only in gettext-tools
EXTRA_LOCALES+=	eu pa

post-install:
	for l in ${EXTRA_LOCALES}; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$$l/LC_MESSAGES; \
	done

.include <bsd.port.mk>
