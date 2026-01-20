COMMENT=		Scheme and language framework for the Java platform

DISTNAME=		kawa-3.1.1
CATEGORIES=		lang
REVISION=		2

HOMEPAGE=		https://www.gnu.org/software/kawa/

# MIT
PERMIT_PACKAGE=	Yes

SITES=			${SITE_GNU:=kawa/}

MODULES=		java
MODJAVA_VER=		11

TEST_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

WANTLIB+=		c curses readline
BUILD_DEPENDS=		print/texinfo \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--enable-kawa-frontend \
			--with-java-source=11
CONFIGURE_ENV+=		AUTOMAKE=${LOCALBASE}/bin/automake-1.16 \
			AUTOCONF=${LOCALBASE}/bin/autoconf-2.69

MAKE_FLAGS=		JAVAC=${JAVA_HOME}/bin/javac \
			JAVA=${JAVA_HOME}/bin/java \
			JAR=${JAVA_HOME}/bin/jar \
			MAKEINFO=${LOCALBASE}/bin/gmakeinfo \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

# use UTF-8 encoding to avoid following errors:
# unmappable character for encoding ASCII
MAKE_ENV+=		LANG=en_US.UTF-8

SUBST_VARS+=		JAVA_HOME

TEST_FLAGS =		DIFF=diff \
			PATH=${PATH}:${JAVA_HOME}/bin

pre-patch:
	touch ${WRKSRC}/configure.ac
	sed -i 's,/usr/bin,${LOCALBASE}/bin,g' ${WRKDIST}/doc/*.man

post-patch:
	${SUBST_CMD} ${WRKSRC}/bin/kawa.c

.include <bsd.port.mk>
