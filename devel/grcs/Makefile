COMMENT=	GNU versions of the rcs utilities

DISTNAME=	rcs-5.10.1
EXTRACT_SUFX=	.tar.lz

PKGNAME=	g${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://www.gnu.org/software/rcs/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SITES=		${SITE_GNU:=rcs/}

RUN_DEPENDS=	textproc/gdiff
BUILD_DEPENDS=	textproc/gdiff

# Uses soelim(1) and pic(1) for preprocessing at build time,
# but the resulting man(7) manuals work with mandoc(1),
# so USE_GROFF is not needed.
BUILD_DEPENDS+=	textproc/groff

USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.71
CONFIGURE_ARGS= --program-prefix=g
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		DIFF="${LOCALBASE}/bin/gdiff" \
		DIFF3="${LOCALBASE}/bin/gdiff3"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

# if regenerating rcs.info from rcs.texi (done in "make fake"), newer
# texinfo is needed. afaik shouldn't normally happen, however thfr has
# seen this in his builds...
#BUILD_DEPENDS+= print/texinfo
#FAKE_FLAGS=	MAKEINFO=gmakeinfo

pre-install:
.for f in ci co rcsclean rcsdiff rcsmerge rlog
	sed -i 's/d"rcs/d"grcs/' ${WRKSRC}/src/${f}
.endfor

# handle --program-prefix: The tests use the commands in ${WRKSRC}/src without
# prefix but the wrapper scripts like gci call the command with the prefix.
pre-test:
.for f in ci co ident merge rcs rcsclean rcsdiff rcsmerge rlog
	ln -fs ${WRKSRC}/src/$f ${WRKSRC}/src/g$f
.endfor

.include <bsd.port.mk>
