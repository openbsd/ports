# $OpenBSD: Makefile,v 1.1.1.1 2010/12/09 21:44:23 jeremy Exp $

COMMENT =	ruby library for reading/writing vorbis comments

DISTNAME =	vorbis_comment-1.0.1
CATEGORIES =	audio

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
LIB_DEPENDS =	audio/libogg \
		audio/libvorbis

CONFIGURE_STYLE = ruby gem ext
REGRESS_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS = rake
RAKE_REGRESS_TARGET = default

do-regress:
	cd ${WRKSRC} && ${RUBY} test/test_vorbis_comment.rb

.include <bsd.port.mk>
