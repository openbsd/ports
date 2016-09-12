# $OpenBSD: Makefile,v 1.4 2016/09/12 13:43:40 feinerer Exp $

COMMENT =		official documentation format of the GNU project

DISTNAME =		texinfo-6.3

CATEGORIES =		print

HOMEPAGE =		https://www.gnu.org/software/texinfo/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv intl ncurses perl

MASTER_SITES =		${MASTER_SITE_GNU:=texinfo/}

BUILD_DEPENDS =		devel/help2man \
			lang/gawk
LIB_DEPENDS =		devel/gettext
TEST_DEPENDS =		print/texlive/base

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
