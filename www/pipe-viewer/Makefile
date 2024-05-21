COMMENT-main =	lightweight YouTube client
COMMENT-gtk =	lightweight YouTube client with a GTK interface

VERSION =	0.5.1
DIST_TUPLE =	github trizen pipe-viewer ${VERSION} .
PKGNAME-main =	pipe-viewer-${VERSION}
PKGNAME-gtk =	gtk-pipe-viewer-${VERSION}

MULTI_PACKAGES =	-main -gtk

CATEGORIES =	www multimedia

MAINTAINER =	Stefan Moran <ssm@howdoesmycode.work>

# Artistic-2.0
PERMIT_PACKAGE = Yes

MODULES =	perl

RUN_DEPENDS =		converters/p5-JSON \
			converters/p5-JSON-XS \
			converters/p5-Unicode-LineBreak \
			devel/p5-Data-Dump \
			devel/p5-Parallel-ForkManager \
			devel/p5-Term-ReadLine-Gnu \
			www/p5-libwww \
			www/p5-LWP-Protocol-https \
			www/yt-dlp
RUN_DEPENDS-gtk =	${BASE_PKGPATH},-main \
			devel/p5-File-ShareDir \
			x11/p5-Gtk3

CONFIGURE_STYLE =	modbuild
CONFIGURE_ARGS =	--gtk

.include <bsd.port.mk>
