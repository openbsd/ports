# $OpenBSD: Makefile,v 1.6 2003/12/10 21:28:58 naddy Exp $

COMMENT=	"audio file volume normalizer"

DISTNAME=	normalize-0.7.4
CATEGORIES=	audio
MASTER_SITES=	http://www.cs.columbia.edu/~cvaill/normalize/

HOMEPAGE=	http://www.cs.columbia.edu/~cvaill/normalize/

MAINTAINER=	Jason Ish <ish@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gettext

CONFIGURE_STYLE=gnu

# Do not build xmms plugin for now.
CONFIGURE_ARGS=	--disable-xmms \
		--with-mad \
		--with-audiofile
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	mad.2::audio/libmad \
		audiofile::devel/libaudiofile

.include <bsd.port.mk>
