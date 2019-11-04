# $OpenBSD: Makefile,v 1.15 2019/11/04 10:00:48 feinerer Exp $

COMMENT =		official documentation format of the GNU project

DISTNAME =		texinfo-6.5
REVISION =		4

CATEGORIES =		print

HOMEPAGE =		https://www.gnu.org/software/texinfo/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv intl curses

MASTER_SITES =		${MASTER_SITE_GNU:=texinfo/}

BUILD_DEPENDS =		devel/help2man \
			lang/gawk
RUN_DEPENDS =		print/texlive/base
LIB_DEPENDS =		devel/gettext,-runtime
TEST_DEPENDS =		${RUN_DEPENDS}

FAKE_FLAGS =		TEXMF=${PREFIX}/share/texmf-local

SEPARATE_BUILD =	Yes
LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--program-prefix=g
CONFIGURE_ENV =		ac_cv_prog_AWK=gawk

INSTALL_TARGET =	install install-tex

# gtexindex is a shell script which hardcodes texindex.awk
post-install:
	cd ${PREFIX}/info && for i in *.info*; do mv $$i g$$i; done
	cd ${PREFIX}/share/texinfo && mv gtexindex.awk texindex.awk

.include <bsd.port.mk>
