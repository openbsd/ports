# $OpenBSD: gettext.port.mk,v 1.2 2001/09/24 17:17:02 brad Exp $

# The RUN_DEPENDS entry is to ensure gettext is
# installed. This is needed so we have locale.alias
# on static archs.
# Typically installed in PREFIX/share/locale.
LIB_DEPENDS+=	intl.1:gettext->=0.10.37:devel/gettext
RUN_DEPENDS+=	:gettext->=0.10.37:devel/gettext
