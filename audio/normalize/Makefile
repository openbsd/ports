# $OpenBSD: Makefile,v 1.3 2002/11/27 07:50:28 ish Exp $

COMMENT=	"audio file volume normalizer"

DISTNAME=	normalize-0.7.4
CATEGORIES=	audio
NEED_VERSION=	1.522
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

LIB_DEPENDS+=	mad::audio/mad \
		audiofile::devel/libaudiofile

.include <bsd.port.mk>


