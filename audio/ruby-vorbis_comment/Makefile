COMMENT =	ruby library for reading/writing vorbis comments

DISTNAME =	vorbis_comment-1.0.3
CATEGORIES =	audio

HOMEPAGE=	https://github.com/jeremyevans/ruby-vorbis_comment

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2/MIT License
PERMIT_PACKAGE =	Yes

WANTLIB =	vorbis ogg

MODULES =	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-cicphash,${MODRUBY_FLAVOR}
LIB_DEPENDS =	audio/libvorbis

CONFIGURE_STYLE = ruby gem ext
TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST = ruby
MODRUBY_TEST_TARGET = test/test_vorbis_comment.rb

.include <bsd.port.mk>
