# $OpenBSD: Makefile,v 1.14 2016/11/04 21:26:37 jeremy Exp $

COMMENT =	ruby library for reading/writing vorbis comments

DISTNAME =	vorbis_comment-1.0.2
REVISION =	3
CATEGORIES =	audio

HOMEPAGE=	http://vorbiscomment.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2/MIT License
PERMIT_PACKAGE_CDROM =	Yes

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
