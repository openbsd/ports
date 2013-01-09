# $OpenBSD: Makefile,v 1.8 2013/01/09 17:38:52 jeremy Exp $

COMMENT =	ruby library for reading/writing vorbis comments

DISTNAME =	vorbis_comment-1.0.1
CATEGORIES =	audio
REVISION =	5

HOMEPAGE=	http://vorbiscomment.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2/MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	vorbis ogg

MODULES =	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-cicphash,${MODRUBY_FLAVOR}
LIB_DEPENDS =	audio/libvorbis

CONFIGURE_STYLE = ruby gem ext
REGRESS_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS = ruby
MODRUBY_REGRESS_TARGET = test/test_vorbis_comment.rb

.include <bsd.port.mk>
