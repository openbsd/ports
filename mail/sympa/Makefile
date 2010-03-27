# $OpenBSD: Makefile,v 1.1.1.1 2010/03/27 11:47:13 landry Exp $

COMMENT =	mailing list manager with web interface

DISTNAME =	sympa-6.0.1
CATEGORIES =	mail www

HOMEPAGE =	http://www.sympa.org
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/distribution/

MODULES =	perl
USE_GMAKE =	Yes

SYMPA_USER =	_sympa
SYMPA_GROUP =	_sympa
SYMPA_HOME =	/var/sympa

SUBST_VARS +=	SYMPA_HOME

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-modulesdir=${PREFIX}/${P5SITE}/Sympa \
			--with-initdir=${PREFIX}/sbin \
			--with-user=${SYMPA_USER} \
			--with-group=${SYMPA_GROUP} \
			--with-sendmail_aliases=${SYMPA_HOME}/sympa_aliases \
			--with-virtual_aliases=${SYMPA_HOME}/sympa_virtual \
			--with-cgidir=${PREFIX}/libexec/sympa \
			--with-libexecdir=${PREFIX}/libexec/sympa \
			--with-defaultdir=${PREFIX}/share/sympa \
			--with-sbindir=${PREFIX}/sbin \
			--with-localedir=${PREFIX}/share/locale

MAKE_ENV =	docdir=${PREFIX}/share/examples/sympa

# no MODULE, doesn't link with it
BUILD_DEPENDS =	::devel/gettext
WANTLIB =	c

RUN_DEPENDS =	::archivers/p5-Archive-Zip \
		::databases/p5-DBI \
		::devel/gettext \
		::devel/p5-IO-stringy \
		::devel/p5-File-Copy-Recursive \
		::devel/p5-libintl \
		::devel/p5-Term-ProgressBar \
		::net/p5-Net-Netmask \
		::mail/p5-MIME-tools \
		::mail/p5-MIME-Charset \
		::mail/p5-MIME-EncWords \
		::mail/p5-MIME-Lite-HTML \
		::security/p5-IO-Socket-SSL \
		::security/p5-Crypt-CipherSaber \
		::textproc/p5-Template \
		::textproc/p5-XML-LibXML \
		::www/fcgi \
		::www/mod_fastcgi \
		::www/mhonarc \
		::www/p5-libwww \
		::www/p5-HTML-Format \
		::www/p5-HTML-StripScripts-Parser \
		::www/p5-HTML-Tree

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/lib/confdef.pm

post-install:
	env PERL5LIB=${PREFIX}/${P5SITE}/Sympa \
		${PREFIX}/sbin/sympa_wizard.pl --create wwsympa.conf \
		--target ${PREFIX}/share/examples/sympa/wwsympa.conf
	env PERL5LIB=${PREFIX}/${P5SITE}/Sympa \
		${PREFIX}/sbin/sympa_wizard.pl --create sympa.conf \
		--target ${PREFIX}/share/examples/sympa/sympa.conf
	mv ${PREFIX}/bin/create_db.* ${PREFIX}/share/examples/sympa/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sympa/
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/sympa/README.OpenBSD
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/sympa

.include <bsd.port.mk>
