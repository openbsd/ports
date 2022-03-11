COMMENT=		source code auditing tool

DISTNAME=		rats-2.4
EXTRACT_SUFX=		.tgz

CATEGORIES=		devel security

# was https://www.fortify.com/ssa-elements/threat-intelligence/rats.html
HOMEPAGE=		https://github.com/andrew-d/rough-auditing-tool-for-security

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c expat

MASTER_SITES=		https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/rough-auditing-tool-for-security/

FIX_CRLF_FILES=		*
PATCHORIG=		.orig.port

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--libdir=${WRKINST}${PREFIX}/share/rats \
			--datadir=${WRKINST}${PREFIX}/share/rats
MAKE_FLAGS=		CFLAGS='${CFLAGS} \
			  -DHAVE_LIBEXPAT=1 -DHAVE_EXPAT_H=1 \
			  -DDATADIR=\"${LOCALBASE}/share/rats\"'

ALL_TARGET=		rats
NO_TEST=		Yes
USE_GMAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
