// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'delivery_list.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveDeliveryListFormConsumer extends StatelessWidget {
  const ReactiveDeliveryListFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DeliveryListForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryListForm.of(context);

    if (formModel is! DeliveryListForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DeliveryListFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DeliveryListFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DeliveryListForm form;
}

class ReactiveDeliveryListForm extends StatelessWidget {
  const ReactiveDeliveryListForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final DeliveryListForm form;

  final WillPopCallback? onWillPop;

  static DeliveryListForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              DeliveryListFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DeliveryListFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DeliveryListFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DeliveryListFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DeliveryListFormBuilder extends StatefulWidget {
  const DeliveryListFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DeliveryList? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, DeliveryListForm formModel, Widget? child) builder;

  final void Function(BuildContext context, DeliveryListForm formModel)?
      initState;

  @override
  _DeliveryListFormBuilderState createState() =>
      _DeliveryListFormBuilderState();
}

class _DeliveryListFormBuilderState extends State<DeliveryListFormBuilder> {
  late DeliveryListForm _formModel;

  @override
  void initState() {
    _formModel =
        DeliveryListForm(DeliveryListForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DeliveryListFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          DeliveryListForm(DeliveryListForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveDeliveryListForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class DeliveryListForm implements FormModel<DeliveryList> {
  DeliveryListForm(
    this.form,
    this.path,
  );

  static const String deliveryListControlName = "deliveryList";

  static const String clientListControlName = "clientList";

  final FormGroup form;

  final String? path;

  String deliveryListControlPath() => pathBuilder(deliveryListControlName);
  String clientListControlPath() => pathBuilder(clientListControlName);
  List<DeliveryPoint> get _deliveryListValue =>
      deliveryListDeliveryPointForm.map((e) => e.model).toList();
  List<Client>? get _clientListValue =>
      clientListClientForm.map((e) => e.model).toList();
  bool get containsDeliveryList {
    try {
      form.control(deliveryListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsClientList {
    try {
      form.control(clientListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get deliveryListErrors => deliveryListControl.errors;
  Object? get clientListErrors => clientListControl?.errors;
  void get deliveryListFocus => form.focus(deliveryListControlPath());
  void get clientListFocus => form.focus(clientListControlPath());
  void clientListRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsClientList) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          clientListControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            clientListControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void deliveryListValueUpdate(
    List<DeliveryPoint> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      deliveryListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <DeliveryPoint>[];
    final toAdd = <DeliveryPoint>[];

    localValue.asMap().forEach((k, v) {
      if (deliveryListDeliveryPointForm.asMap().containsKey(k) &&
          (deliveryListControl.value ?? []).asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      deliveryListControl.updateValue(
          toUpdate
              .map((e) => DeliveryPointForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        deliveryListControl.add(DeliveryPointForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void clientListValueUpdate(
    List<Client>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value ?? []);
    if (localValue.isEmpty) {
      clientListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <Client>[];
    final toAdd = <Client>[];

    localValue.asMap().forEach((k, v) {
      if (clientListClientForm.asMap().containsKey(k) &&
          (clientListControl?.value ?? []).asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      clientListControl?.updateValue(
          toUpdate.map((e) => ClientForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        clientListControl?.add(ClientForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void deliveryListInsert(
    int i,
    DeliveryPoint value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if ((deliveryListControl.value ?? []).length < i) {
      addDeliveryListItem(value);
      return;
    }

    deliveryListControl.insert(
      i,
      DeliveryPointForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void clientListInsert(
    int i,
    Client value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if ((clientListControl?.value ?? []).length < i) {
      addClientListItem(value);
      return;
    }

    clientListControl?.insert(
      i,
      ClientForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void deliveryListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    deliveryListDeliveryPointForm.clear();
    deliveryListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void clientListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    clientListClientForm.clear();
    clientListControl?.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void deliveryListValuePatch(
    List<DeliveryPoint> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = deliveryListDeliveryPointForm.asMap().keys;

    final toPatch = <DeliveryPoint>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    deliveryListControl.patchValue(
        toPatch.map((e) => DeliveryPointForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void clientListValuePatch(
    List<Client>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = clientListClientForm.asMap().keys;

    final toPatch = <Client>[];
    (value ?? []).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    clientListControl?.patchValue(
        toPatch.map((e) => ClientForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void deliveryListValueReset(
    List<DeliveryPoint> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      deliveryListControl.reset(
          value: value
              .map((e) => DeliveryPointForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void clientListValueReset(
    List<Client>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      clientListControl?.reset(
          value:
              value?.map((e) => ClientForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormArray<Map<String, Object?>> get deliveryListControl =>
      form.control(deliveryListControlPath())
          as FormArray<Map<String, Object?>>;
  FormArray<Map<String, Object?>>? get clientListControl => containsClientList
      ? form.control(clientListControlPath())
          as FormArray<Map<String, Object?>>?
      : null;
  List<DeliveryPointForm> get deliveryListDeliveryPointForm =>
      (deliveryListControl.value ?? [])
          .asMap()
          .map((k, v) => MapEntry(
              k, DeliveryPointForm(form, pathBuilder("deliveryList.$k"))))
          .values
          .toList();
  List<ClientForm> get clientListClientForm => (clientListControl?.value ?? [])
      .asMap()
      .map(
          (k, v) => MapEntry(k, ClientForm(form, pathBuilder("clientList.$k"))))
      .values
      .toList();
  void deliveryListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      deliveryListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      deliveryListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void clientListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      clientListControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      clientListControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<DeliveryPointForm>>
      get deliveryListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<DeliveryPointForm>>(
              form.control(deliveryListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => deliveryListDeliveryPointForm);
  ExtendedControl<List<Map<String, Object?>?>, List<ClientForm>>
      get clientListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<ClientForm>>(
              form.control(clientListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => clientListClientForm);
  void addDeliveryListItem(DeliveryPoint value) {
    deliveryListControl.add(DeliveryPointForm.formElements(value));
  }

  void addClientListItem(Client value) {
    clientListControl?.add(ClientForm.formElements(value));
  }

  void removeDeliveryListItemAtIndex(int i) {
    if ((deliveryListControl.value ?? []).length > i) {
      deliveryListControl.removeAt(i);
    }
  }

  void removeClientListItemAtIndex(int i) {
    if ((clientListControl?.value ?? []).length > i) {
      clientListControl?.removeAt(i);
    }
  }

  void addDeliveryListItemList(List<DeliveryPoint> value) {
    value.map((e) => addDeliveryListItem(e));
  }

  void addClientListItemList(List<Client> value) {
    value.map((e) => addClientListItem(e));
  }

  @override
  DeliveryList get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'DeliveryListForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return DeliveryList(
        deliveryList: _deliveryListValue, clientList: _clientListValue);
  }

  void submit({
    required void Function(DeliveryList model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    DeliveryList value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DeliveryListForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    DeliveryList? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(DeliveryList? deliveryList) => FormGroup({
        deliveryListControlName: FormArray(
            (deliveryList?.deliveryList ?? [])
                .map((e) => DeliveryPointForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        clientListControlName: FormArray(
            (deliveryList?.clientList ?? [])
                .map((e) => ClientForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class DeliveryPointForm implements FormModel<DeliveryPoint> {
  DeliveryPointForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String addressControlName = "address";

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String addressControlPath() => pathBuilder(addressControlName);
  String get _nameValue => nameControl.value ?? "";
  Address? get _addressValue => addressForm.model;
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;
  Object? get addressErrors => addressControl?.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get addressFocus => form.focus(addressControlPath());
  void addressRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAddress) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          addressControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            addressControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueUpdate(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void addressValueReset(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl?.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormGroup? get addressControl =>
      containsAddress ? form.control(addressControlPath()) as FormGroup? : null;
  AddressForm get addressForm => AddressForm(form, pathBuilder('address'));
  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  DeliveryPoint get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'DeliveryPointForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return DeliveryPoint(name: _nameValue, address: _addressValue);
  }

  void submit({
    required void Function(DeliveryPoint model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    DeliveryPoint value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DeliveryPointForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    DeliveryPoint? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(DeliveryPoint? deliveryPoint) => FormGroup({
        nameControlName: FormControl<String>(
            value: deliveryPoint?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressControlName: AddressForm.formElements(deliveryPoint?.address)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class AddressForm implements FormModel<Address> {
  AddressForm(
    this.form,
    this.path,
  );

  static const String streetControlName = "street";

  static const String cityControlName = "city";

  final FormGroup form;

  final String? path;

  String streetControlPath() => pathBuilder(streetControlName);
  String cityControlPath() => pathBuilder(cityControlName);
  String? get _streetValue => streetControl?.value;
  String? get _cityValue => cityControl?.value;
  bool get containsStreet {
    try {
      form.control(streetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCity {
    try {
      form.control(cityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get streetErrors => streetControl?.errors;
  Object? get cityErrors => cityControl?.errors;
  void get streetFocus => form.focus(streetControlPath());
  void get cityFocus => form.focus(cityControlPath());
  void streetRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsStreet) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          streetControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            streetControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void cityRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCity) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          cityControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            cityControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void streetValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    streetControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    streetControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      streetControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void cityValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cityControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get streetControl => containsStreet
      ? form.control(streetControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get cityControl => containsCity
      ? form.control(cityControlPath()) as FormControl<String>?
      : null;
  void streetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      streetControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      streetControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void citySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cityControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cityControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Address get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'AddressForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Address(street: _streetValue, city: _cityValue);
  }

  void submit({
    required void Function(Address model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AddressForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Address? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Address? address) => FormGroup({
        streetControlName: FormControl<String>(
            value: address?.street,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cityControlName: FormControl<String>(
            value: address?.city,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ClientForm implements FormModel<Client> {
  ClientForm(
    this.form,
    this.path,
  );

  static const String clientTypeControlName = "clientType";

  static const String nameControlName = "name";

  static const String notesControlName = "notes";

  final FormGroup form;

  final String? path;

  String clientTypeControlPath() => pathBuilder(clientTypeControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String notesControlPath() => pathBuilder(notesControlName);
  ClientType get _clientTypeValue => clientTypeControl.value as ClientType;
  String? get _nameValue => nameControl?.value;
  String? get _notesValue => notesControl?.value;
  bool get containsClientType {
    try {
      form.control(clientTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNotes {
    try {
      form.control(notesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get clientTypeErrors => clientTypeControl.errors;
  Object? get nameErrors => nameControl?.errors;
  Object? get notesErrors => notesControl?.errors;
  void get clientTypeFocus => form.focus(clientTypeControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get notesFocus => form.focus(notesControlPath());
  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void notesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsNotes) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          notesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            notesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void clientTypeValueUpdate(
    ClientType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    clientTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void notesValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    notesControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void clientTypeValuePatch(
    ClientType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    clientTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void notesValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    notesControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void clientTypeValueReset(
    ClientType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      clientTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void notesValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      notesControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<ClientType> get clientTypeControl =>
      form.control(clientTypeControlPath()) as FormControl<ClientType>;
  FormControl<String>? get nameControl => containsName
      ? form.control(nameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get notesControl => containsNotes
      ? form.control(notesControlPath()) as FormControl<String>?
      : null;
  void clientTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      clientTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      clientTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void notesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      notesControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      notesControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Client get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ClientForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Client(
        clientType: _clientTypeValue, name: _nameValue, notes: _notesValue);
  }

  void submit({
    required void Function(Client model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    Client value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ClientForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Client? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Client? client) => FormGroup({
        clientTypeControlName: FormControl<ClientType>(
            value: client?.clientType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: client?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        notesControlName: FormControl<String>(
            value: client?.notes,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveDeliveryListFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveDeliveryListFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(DeliveryListForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DeliveryListForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, DeliveryListForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveDeliveryListFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveDeliveryListFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      DeliveryListForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DeliveryListForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, DeliveryListForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveStandaloneDeliveryPointFormConsumer extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      StandaloneDeliveryPointForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStandaloneDeliveryPointForm.of(context);

    if (formModel is! StandaloneDeliveryPointForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class StandaloneDeliveryPointFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const StandaloneDeliveryPointFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final StandaloneDeliveryPointForm form;
}

class ReactiveStandaloneDeliveryPointForm extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final StandaloneDeliveryPointForm form;

  final WillPopCallback? onWillPop;

  static StandaloneDeliveryPointForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              StandaloneDeliveryPointFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        StandaloneDeliveryPointFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as StandaloneDeliveryPointFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return StandaloneDeliveryPointFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class StandaloneDeliveryPointFormBuilder extends StatefulWidget {
  const StandaloneDeliveryPointFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DeliveryPoint? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      StandaloneDeliveryPointForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, StandaloneDeliveryPointForm formModel)? initState;

  @override
  _StandaloneDeliveryPointFormBuilderState createState() =>
      _StandaloneDeliveryPointFormBuilderState();
}

class _StandaloneDeliveryPointFormBuilderState
    extends State<StandaloneDeliveryPointFormBuilder> {
  late StandaloneDeliveryPointForm _formModel;

  @override
  void initState() {
    _formModel = StandaloneDeliveryPointForm(
        StandaloneDeliveryPointForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant StandaloneDeliveryPointFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = StandaloneDeliveryPointForm(
          StandaloneDeliveryPointForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveStandaloneDeliveryPointForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class StandaloneDeliveryPointForm implements FormModel<DeliveryPoint> {
  StandaloneDeliveryPointForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String addressControlName = "address";

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String addressControlPath() => pathBuilder(addressControlName);
  String get _nameValue => nameControl.value ?? "";
  Address? get _addressValue => addressForm.model;
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;
  Object? get addressErrors => addressControl?.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get addressFocus => form.focus(addressControlPath());
  void addressRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAddress) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          addressControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            addressControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueUpdate(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void addressValueReset(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl?.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormGroup? get addressControl =>
      containsAddress ? form.control(addressControlPath()) as FormGroup? : null;
  AddressForm get addressForm => AddressForm(form, pathBuilder('address'));
  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  DeliveryPoint get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'StandaloneDeliveryPointForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return DeliveryPoint(name: _nameValue, address: _addressValue);
  }

  void submit({
    required void Function(DeliveryPoint model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    DeliveryPoint value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(StandaloneDeliveryPointForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    DeliveryPoint? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(DeliveryPoint? deliveryPoint) => FormGroup({
        nameControlName: FormControl<String>(
            value: deliveryPoint?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressControlName: AddressForm.formElements(deliveryPoint?.address)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveStandaloneDeliveryPointFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(StandaloneDeliveryPointForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StandaloneDeliveryPointForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      StandaloneDeliveryPointForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStandaloneDeliveryPointForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      StandaloneDeliveryPointForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StandaloneDeliveryPointForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      StandaloneDeliveryPointForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStandaloneDeliveryPointForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
