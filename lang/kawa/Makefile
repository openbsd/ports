# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:22 sthen Exp $

COMMENT=		Scheme and language framework for the Java platform

DISTNAME=		kawa-3.0
REVISION=		0
CATEGORIES=		lang java

HOMEPAGE=		https://www.gnu.org/software/kawa/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=kawa/}

MODULES=		java
MODJAVA_VER=		1.8+

TEST_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

WANTLIB+=		c curses readline
BUILD_DEPENDS=		print/texinfo \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-kawa-frontend
CONFIGURE_ENV+=		AUTOMAKE=${LOCALBASE}/bin/automake-1.15 \
			AUTOCONF=${LOCALBASE}/bin/autoconf-2.69

MAKE_FLAGS=		JAVAC=${JAVA_HOME}/bin/javac \
			JAVA=${JAVA_HOME}/bin/java \
			MAKEINFO=${LOCALBASE}/bin/gmakeinfo \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

MAKE_ENV+=		SLIB_JAVAFLAGS=-Xmx1200M

# use UTF-8 encoding to avoid following errors:
# unmappable character for encoding ASCII
MAKE_ENV+=		LANG=en_US.UTF-8

TEST_FLAGS =		DIFF=diff \
			PATH=${PATH}:${JAVA_HOME}/bin

# Use a bit complex xargs avoid unneeded modifications to files
# causing build issues on i386.
pre-patch:
	find ${WRKSRC} -type f | \
		xargs fgrep -l "JAR =" | \
		xargs sed -i 's,^JAR =.*,JAR = ${JAVA_HOME}/bin/jar,g'; \
		touch ${WRKSRC}/configure.ac

.include <bsd.port.mk>
