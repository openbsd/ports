# $OpenBSD: Makefile,v 1.29 2014/08/27 06:58:00 ajacoutot Exp $

COMMENT =	mailing list manager with web interface

VERSION =	6.1.17
REVISION =	2
DISTNAME =	sympa-${VERSION}

CATEGORIES =	mail www

HOMEPAGE =	http://www.sympa.org
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/distribution/ \
			${HOMEPAGE}/distribution/old/ \
			http://distfiles.nl/

MODULES =	perl
USE_GMAKE =	Yes

SYMPA_HOME =	/var/sympa

SUBST_VARS +=	SYMPA_HOME

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-modulesdir=${PREFIX}/${P5SITE}/Sympa \
			--with-initdir=${PREFIX}/sbin \
			--with-user=_sympa \
			--with-group=_sympa \
			--with-sendmail_aliases=${SYMPA_HOME}/sympa_aliases \
			--with-virtual_aliases=${SYMPA_HOME}/sympa_virtual \
			--with-confdir=${SYMPA_HOME}/etc/ \
			--with-cgidir=${PREFIX}/libexec/sympa \
			--libexecdir=${PREFIX}/libexec/sympa \
			--with-defaultdir=${PREFIX}/share/sympa \
			--with-docdir=${PREFIX}/share/examples/sympa \
			--sbindir=${PREFIX}/sbin \
			--with-localedir=${PREFIX}/share/locale

USE_GROFF =	Yes

# no MODULE, doesn't link with it
BUILD_DEPENDS =	devel/gettext
WANTLIB =	c

RUN_DEPENDS =	archivers/p5-Archive-Zip \
		converters/p5-Unicode-LineBreak>=2011.05 \
		databases/p5-DBI \
		devel/gettext \
		devel/p5-IO-stringy \
		devel/p5-File-Copy-Recursive \
		devel/p5-libintl \
		devel/p5-Term-ProgressBar \
		net/p5-Net-Netmask \
		mail/p5-MIME-tools \
		mail/p5-MIME-Charset \
		mail/p5-MIME-EncWords \
		mail/p5-MIME-Lite-HTML \
		security/p5-IO-Socket-SSL \
		security/p5-Crypt-CipherSaber \
		textproc/p5-Template \
		textproc/p5-XML-LibXML \
		www/spawn-fcgi \
		www/mod_fastcgi \
		www/mhonarc \
		www/p5-libwww \
		www/p5-HTML-Format \
		www/p5-HTML-StripScripts-Parser \
		www/p5-HTML-Tree

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/lib/confdef.pm

post-install:
	# taken from Makefile's installconfig target
	env PERL5LIB=${PREFIX}/${P5SITE}/Sympa \
		${PREFIX}/sbin/sympa_wizard.pl --create wwsympa.conf \
		--target ${PREFIX}/share/examples/sympa/wwsympa.conf
	env PERL5LIB=${PREFIX}/${P5SITE}/Sympa \
		${PREFIX}/sbin/sympa_wizard.pl --create sympa.conf \
		--target ${PREFIX}/share/examples/sympa/sympa.conf
	echo ${VERSION} > ${PREFIX}/share/examples/sympa/data_structure.version
	mv ${PREFIX}/bin/create_db.* ${PREFIX}/share/examples/sympa/
	${INSTALL_DATA} ${FILESDIR}/httpd-sympa.conf ${PREFIX}/share/examples/sympa/

.include <bsd.port.mk>
